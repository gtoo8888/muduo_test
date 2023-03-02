#include "thrid/include/muduo/base/Logging.h"
#include "thrid/include/muduo/base/Thread.h"
#include "thrid/include/muduo/net/EventLoop.h"
#include "thrid/include/muduo/net/InetAddress.h"

using namespace muduo;
using namespace muduo::net;


int main(int argc,char* argv[]){
    LOG_INFO << "pid=" << getpid() ;

    bool ipv6 = argc > 2;
    EventLoop loop;
    InetAddress listenAddr(2000,false,ipv6);

    loop.loop();
}