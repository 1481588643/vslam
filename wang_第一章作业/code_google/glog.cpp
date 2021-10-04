// #include <iostream>
// #include <glog/logging.h>

// int main(int argc, char* argv[]) {
//     google::InitGoogleLogging(argv[0]);
//  //   FLAGS_log_dir = "/tmp/logs/"; 
//     LOG(INFO) << "hello world";
//     return 0;
// }


// #include <iostream>
// #include <glog/logging.h>
// using namespace std;

// static void InitLog(const char* cmd)
// {
//     FLAGS_logbufsecs = 0;
//     google::InitGoogleLogging(cmd);
//     FLAGS_log_dir = "/tmp/";
// }

// int main(int argc, char** argv)
// {
//     InitLog(argv[0]);
//     LOG(INFO)<<"Hello world glog";
//     cout<<"hello world"<<endl;
//     return 0;
// }





#include <glog/logging.h>
// int main(int argc, char **argv) {
//     google::InitGoogleLogging(argv[0]); // 初始化GLog库
//     FLAGS_log_dir = "./"; // 将日志文件输出到本地
//     LOG(ERROR) << "There is error !!!";
//     return 0;
// }

int main(int argc, char **argv) {
    google::InitGoogleLogging(argv[0]); // 初始化GLog库
    FLAGS_logtostderr = 1; // 设置将Log记录到stderr
    for(int i = 0; i < 20; i++) {
        LOG_IF(INFO, i > 15) << "i > 15"; //当i > 15时，记录Log;
    }
    return 0;
}
