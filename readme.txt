The only thing you should adapt to make things work on your local machine 
are the 2 environment variables in set_env.bat:
  VECTORCAST_DIR
  VECTOR_LICENSE_FILE

To start VectorCAST run start_vc.bat

The sorce code is varaint depending on Compile-Define THREE_DIMENSIONAL being set or not.

In the wd folder there are 3 vcm files.
- two_dim.vcm and three_dim.vcm : Both share the same folder for the environment files of UUT_VECTOR. The folder that the 
  projects use is "next to" the source code in src\package_vector\UUT_VECTOR
  THREE_DIMENSIONAL is set as Compile define in three_dim.vcm but not in two_dim
  
- all_in_one.vcm : This is another way of dealing with variants. One Project dealing with different variants
  There are 2 TestSuites: 2DIM and 3DIM having the same group PackageVector with UUT_VECTOR. 
  THREE_DIMENSIONAL is only set in TestSuite 3DIM


The storage locations of the VC/manage envrionment folder for two_dim and three_dim.vcm were set 
using CLI %VECTORCAST_DIR%\manage and the command 
      --set-storage-location=<DIRECTORY>
                                Set where manage should store environment test
                                  files (i.e., tst, env, and cfg). Must be
                                  given with an --environment.

Destination folder src\package_vector\UUT_VECTOR needs to be present and empty:
%VECTORCAST_DIR%\manage -p two_dim   -e UUT_VECTOR --set-storage-location=$(VCAST_SourceRoot)\src\package_vector\UUT_VECTOR

To allow to set that same folder for UUT_VECTOR in three_dim.vcm I had to backup and delete the files in the destination folder
%VECTORCAST_DIR%\manage -p three_dim -e UUT_VECTOR --set-storage-location=$(VCAST_SourceRoot)\src\package_vector\UUT_VECTOR
After that command I copied the backed-up files back to the destination folder

