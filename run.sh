#!/bin/sh


INCLUDE="-I/home/hf02/Qt/000111/FatCat-Server/LIBS/threadpool-0_2_5-src/threadpool/boost" \
" -I/home/hf02/Qt/000111/FatCat-Server/LIBS/include" \
" -I/home/hf02/Qt/000111/FatCat-Server/LIBS/hiredis-master" \
" -I/home/hf02/Qt/000111/FatCat-Server/LIBS/boost_1_58_0" \
" -I/home/hf02/Qt/000111/FatCat-Server/LIBS/postgresql"

LIBS="/home/hf02/Qt/000111/FatCat-Server/LIBS/libboost_log.a" \
" /home/hf02/Qt/000111/FatCat-Server/LIBS/libboost_system.a" \
" /home/hf02/Qt/000111/FatCat-Server/LIBS/libboost_thread.a" \
" /home/hf02/Qt/000111/FatCat-Server/LIBS/libhiredis.a" \
" /home/hf02/Qt/000111/FatCat-Server/LIBS/liblog4c.a" \
" /home/hf02/Qt/000111/FatCat-Server/LIBS/libpq.so"



#INCLUDE="-I/home/yangchen/workspace/boost_1_58_0"\
#" -I/home/yangchen/workspace/threadpool"\
#" -I/usr/local/hiredis/include/hiredis"\
#" -I/usr/include/postgresql"\
#" -I../Server" 

#LIBS="/usr/local/hiredis/lib/libhiredis.a"\
#" /usr/lib/libpq.so"\
#" /home/yangchen/workspace/boost_1_58_0/stage/lib/libboost_system.a"\
#" /home/yangchen/workspace/boost_1_58_0/stage/lib/libboost_thread.a"


echo $INCLUDE
g++ -c *.cpp $INCLUDE
g++ -c ./Game/*.hpp $INCLUDE
g++ -c ./GameAttack/*.cpp $INCLUDE
g++ -c ./GameChat/*.cpp $INCLUDE
g++ -c ./GameInterchange/*.cpp $INCLUDE
g++ -c ./GameTask/*.cpp $INCLUDE
g++ -c ./memManage/*.cpp $INCLUDE
g++ -c ./Monster/*.cpp $INCLUDE
g++ -c ./NetWork/*.cpp $INCLUDE
g++ -c ./OperationGoods/*.cpp $INCLUDE
g++ -c ./OperationPostgres/*.cpp $INCLUDE
g++ -c ./PlayerLogin/*.cpp $INCLUDE
g++ -c ./TeadFriend/*.cpp $INCLUDE


g++ -std=c++11 *.o $LIBS -o Server  -lpthread

 
