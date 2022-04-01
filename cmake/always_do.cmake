
macro(ALWAYS_DO what)
  # abs path to the file in this package
  set(always_do_path "/home/vberenz/Workspaces/pam/workspace/src/cmake_always_do/cmake/always_do.cmake")
  # for user information
  message(INFO " always do: ${what}")
  # updating this file in a trivial fashion,
  # forcing cache not to be used.
  write_file(${always_do_path} "\n" APPEND)
endmacro()


  


