import sys

# Get testing config specified by user in command line (or in setup.sh script)
def get_config(cfg_path = "../TestConfigs"):

    sys.path.append(cfg_path)

    from Engine_cfg import masterCfg

    return masterCfg

# Fetch the template server script to write testing portion
def get_template(path="./static/template_REPServer.py"):

    with open(path, "r") as f:
        
        lines = f.readlines()

    return lines

def split_script(lines):
    
    for l in lines:
        if "WRITE HERE PLEASE" in l:
            write_idx = lines.index(l)
            break

    header = lines[:write_idx]
    trailer = lines[write_idx + 1:]

    return header, trailer

def write_preamble(outfile, tests, header):

    test_paths = []
    test_info = {}

    for test in tests:
        #if test["TestPath"] not in test_paths:
        #    test_paths.append(test["TestPath"])
        if test["TestScript"] in test_info.keys():
            test_info[test["TestScript"]].append(test["TestClass"])
        else:
            test_info[test["TestScript"]] = [test["TestClass"]]

    for line in header:
        if "IMPORT HERE" in line:
            for path in test_paths:
                outfile.write('sys.path.append("{}")\n'.format(path))
            for script,cls in test_info.items():
                snipet = ", ".join(cls)
                
                outfile.write("from {} import {}\n".format(script.replace(".py", ""), snipet))
                
        else: 
            outfile.write(line)


def write_case(outfile, tests):

    i = 0

    for test in tests:

        if "TestClass" in test.keys():
            test_class = test["TestClass"]
        else:
            continue
        
        outfile.write('''
        if desired_test == 'test{}':
            test{} = {}(conn, **test_info)
'''.format(i, i, test_class))

        i += 1

def main():

    cfg = get_config()
    test_list = cfg['Test']

    lines = get_template()

    header, trailer = split_script(lines)

    with open("./autoREPServer.py", "w") as f:
        
        write_preamble(f, test_list, header)
        write_case(f, test_list)

        for line in trailer:
            f.write(line)

    f.close()

if __name__ == "__main__":
    main()
