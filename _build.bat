cd .
if exist "./parse-object-command-format/.git" goto "read-build-file"
git clone "https://github.com/volkovasystems/parse-object-command-format.git"
cd "parse-object-command-format"
git checkout develop
git pull
cd ..

:"read-build-file"
cd .
if exist "./read-build-file/.git" goto "harvest-directory"
git clone "https://github.com/volkovasystems/read-build-file.git"
cd "read-build-file"
git checkout develop
git pull
cd ..

:"harvest-directory"
cd .
if exist "./harvest-directory/.git" goto "attempt-module-execution"
git clone "https://github.com/volkovasystems/harvest-directory.git"
cd "harvest-directory"
git checkout develop
git pull
cd ..

:"attempt-module-execution"
cd .
if exist "./attempt-module-execution/.git" goto "harvest-list"
git clone "https://github.com/volkovasystems/attempt-module-execution.git"
cd "attempt-module-execution"
git checkout develop
git pull
cd ..

:"harvest-list"
cd "./harvest-directory"
if exist "./harvest-list/.git" goto "list-directory-tree"
git clone "https://github.com/volkovasystems/harvest-list.git"
cd "harvest-list"
git checkout develop
git pull
cd ..

:"list-directory-tree"
cd ..
cd "./harvest-directory"
if exist "./list-directory-tree/.git" goto "check-directory-exists"
git clone "https://github.com/volkovasystems/list-directory-tree.git"
cd "list-directory-tree"
git checkout develop
git pull
cd ..

:"check-directory-exists"
cd ..
cd "./harvest-directory/list-directory-tree"
if exist "./check-directory-exists/.git" goto "recursively-traverse-directory"
git clone "https://github.com/volkovasystems/check-directory-exists.git"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"recursively-traverse-directory"
cd ../../
cd "./harvest-directory/list-directory-tree"
if exist "./recursively-traverse-directory/.git" goto "harvest-list-2"
git clone "https://github.com/volkovasystems/recursively-traverse-directory.git"
cd "recursively-traverse-directory"
git checkout develop
git pull
cd ..

:"harvest-list-2"
cd ../../
cd "./harvest-directory/list-directory-tree"
if exist "./harvest-list/.git" goto "append-list"
git clone "https://github.com/volkovasystems/harvest-list.git"
cd "harvest-list"
git checkout develop
git pull
cd ..

:"append-list"
cd ../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if exist "./append-list/.git" goto "traverse-directory"
git clone "https://github.com/volkovasystems/append-list.git"
cd "append-list"
git checkout develop
git pull
cd ..

:"traverse-directory"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if exist "./traverse-directory/.git" goto "check-directory-exists-2"
git clone "https://github.com/volkovasystems/traverse-directory.git"
cd "traverse-directory"
git checkout develop
git pull
cd ..

:"check-directory-exists-2"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory"
if exist "./check-directory-exists/.git" goto "check-directory-exists-3"
git clone "https://github.com/volkovasystems/check-directory-exists.git"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"check-directory-exists-3"
cd ../../../
cd "./harvest-directory/list-directory-tree/recursively-traverse-directory/traverse-directory"
if exist "./check-directory-exists/.git" goto "end"
git clone "https://github.com/volkovasystems/check-directory-exists.git"
cd "check-directory-exists"
git checkout develop
git pull
cd ..

:"end"
cd ../../../../