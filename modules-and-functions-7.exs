# Convert a float to a string with 2 decimal digits.
:io.format("~.2f~n", [2.0/3.0])

# Get the value of an operating system environment variable.
System.get_env("HOME")

# Return the extension component of a file name
Path.extname("dave/test.exs")

# Return the current working directory of the process
System.cwd

# Convert a string containing JSON into Elixir data structures
# There are many options. Some, such as https://github.com/guedes/exjson,
# are specifically for Elixir. Others, such as https://github.com/hio/erlang-json
# are Elnag libraries that are usable from Elixir.

# Execute an command in your operating system's shell
System.cmd("date", [])
