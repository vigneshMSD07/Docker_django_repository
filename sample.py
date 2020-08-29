print "welcome to first pipeline execution and CICD sssss4555"

import argparse
import ast

def test(args):
  for i in args.versions:
    print i
  return args.versions
  
def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('-vl','--versions', help='name_of_script', type=ast.literal_eval)
  args= parser.parse_args()
  test(args)
  
if __name__ == "__main__":
  main()
