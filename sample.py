print "welcome to first pipeline execution"

import argparse
import ast

def test(args):
  for i in args.versions:
    print i
  
def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('-vl','--versions', help='name_of_script', type=ast.literal_eval)
  args= parser.parse_args()
  test(args)
  
if __name__ == "__main__":
  main()
