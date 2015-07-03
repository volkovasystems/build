cd .
if not exist "./parse-object-command-format/.git" goto "read-build-file"
cd "parse-object-command-format"
git checkout develop
git pull
cd ..

:"read-build-file"
cd .
if not exist "./read-build-file/.git" goto "harvest-directory"
cd "read-build-file"
git checkout develop
git pull
cd ..

:"harvest-directory"
cd .
if not exist "./harvest-directory/.git" goto "check-file-exists"
cd "harvest-directory"
git checkout develop
git pull
cd ..

:"check-file-exists"
cd .
if not exist "./check-file-exists/.git" goto "attempt-module-execution"
cd "check-file-exists"
git checkout develop
git pull
cd ..

:"attempt-module-execution"
cd .
if not exist "./attempt-module-execution/.git" goto "read-file"
cd "attempt-module-execution"
git checkout develop
git pull
cd ..

:"read-file"
cd "./read-build-file"
if not exist "./read-file/.git" goto "check-directory-exists-4"
cd "read-file"
git checkout develop
git pull
cd ..

:"check-directory-exists-4"
cd ..
cd "./read-build-file"
if not exist "./check-directory-exists/.git" goto "check-file-exists-2"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"check-file-exists-2"
cd ..
cd "./read-build-file"
if not exist "./check-file-exists/.git" goto "harvest-list"
cd "check-file-exists"
git checkout develop
git pull
cd ..

:"harvest-list"
cd ..
cd "./harvest-directory"
if not exist "./harvest-list/.git" goto "list-directory-tree"
cd "harvest-list"
git checkout develop
git pull
cd ..

:"list-directory-tree"
cd ..
cd "./harvest-directory"
if not exist "./list-directory-tree/.git" goto "check-directory-exists"
cd "list-directory-tree"
git checkout develop
git pull
cd ..

:"check-directory-exists"
cd ..
cd "./harvest-directory/list-directory-tree"
if not exist "./check-directory-exists/.git" goto "check-file-exists-3"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"check-file-exists-3"
cd ../../
cd "./read-build-file/read-file"
if not exist "./check-file-exists/.git" goto "recursively-traverse-directory"
cd "check-file-exists"
git checkout develop
git pull
cd ..

:"recursively-traverse-directory"
cd ../../
cd "./harvest-directory/list-directory-tree"
if not exist "./recursively-traverse-directory/.git" goto "harvest-list-2"
cd "recursively-traverse-directory"
git checkout develop
git pull
cd ..

:"harvest-list-2"
cd ../../
cd "./harvest-directory/list-directory-tree"
if not exist "./harvest-list/.git" goto "append-list"
cd "harvest-list"
git checkout develop
git pull
cd ..

:"append-list"
cd ../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if not exist "./append-list/.git" goto "traverse-directory"
cd "append-list"
git checkout develop
git pull
cd ..

:"traverse-directory"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if not exist "./traverse-directory/.git" goto "check-directory-exists-2"
cd "traverse-directory"
git checkout develop
git pull
cd ..

:"check-directory-exists-2"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if not exist "./check-directory-exists/.git" goto "check-directory-exists-3"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"check-directory-exists-3"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory/traverse-directory"
if not exist "./check-directory-exists/.git" goto "end"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"end"
cd ../../../../