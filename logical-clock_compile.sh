# If you want graphical interface uncomment this
#sudo apt install python3-tk

bin/python3 -m pip install virtualenv
cd ..
virtualenv logical-clock 2&>/dev/null
source logical-clock/bin/activate
cd logical-clock
bin/python3 -m pip install --upgrade pip
#bin/python3 -m pip install --upgrade six
#bin/python3 -m pip install --upgrade filelock
#bin/python3 -m pip install --upgrade distlib
bin/python3 -m pip install --upgrade grpcio
bin/python3 -m pip install --upgrade grpcio-tools
bin/python3 -m pip install --upgrade protobuf

# If you want graphical interface uncomment this
bin/python3 -m pip install --upgrade pysimplegui

cd CSE531
python3 -m grpc_tools.protoc -I . banking.proto  --python_out=. --grpc_python_out=.
