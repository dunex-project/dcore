/*
   false / true / return: Exit with true, false or specified value.

   Written by: chaomodus
   2019-10-13T14:00:06
 */

import std.algorithm;
import std.conv;
import std.stdio;

int main(string[] args) {
  if (args[0].endsWith("false")) {
    return 1;
  } else if (args[0].endsWith("true")) {
    return 0;
  }

  int retval;
  if (args.length == 2) {
    // if return's argument is a non-integer, then it is ignored and 0 returned
    try {
      retval = parse!int(args[1]);
    } catch (Throwable) {}
  } else if (args.length > 2) {
    writefln("%s: too many arguments", args[0]);
    retval = 1;
  }

  return retval;
}
