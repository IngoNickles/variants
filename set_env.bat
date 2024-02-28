if "%SET_ENV_BATCH_GUARD%" NEQ "" GOTO :EOF

  rem Set path to VectorCAST install directory
  set VECTORCAST_DIR=d:\vcast\2024

  rem VectorCAST license stuff
  set VECTOR_LICENSE_FILE=@localhost
  set LM_APP_DISABLE_CACHE_READ=1
  set LM_LICENSE_FILE=

  rem Multiple call guard
  set SET_ENV_BATCH_GUARD=1
  
  rem Actual folder where this batch file runs. The tailing '.' is because of the tainling backslash in %~dp0
  set ACTUAL_DIR=%~dp0.

  rem Other directories that we may need
  set SOURCE_DIR=%ACTUAL_DIR%\src
  set WORKING_DIR=%ACTUAL_DIR%\wd
  set SUPPORTFILES_DIR=%ACTUAL_DIR%\wd\supportfiles
  
  rem Put the compiler in the path that is shipped with VectorCAST. 
  set path=%VECTORCAST_DIR%\mingw\bin;%path%

  rem Should make Building quicker
  set VCAST_NUM_JOBS=6
  
  rem If you do not want VectorCAST to perform test case maintenance, set this to disable 
  set VCAST_DISABLE_TEST_MAINTENANCE=1