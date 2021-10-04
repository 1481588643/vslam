#include <iostream>

using namespace std;

#include <Eigen/Core>
#include <Eigen/Geometry>

using namespace Eigen;

int main(int argc, char ** argv){

    //创建视觉传感器和激光传感器的四元数
    Quaterniond q_BL(0.3, 0.5, 0,20.1), q_BC(0.8, 0.2, 0.1, 0.1);
    //四元数归一化
    q_BC.normalize();
    q_BL.normalize();
    
    //平移向量t1和t2
    Vector3d t_BL(0.4, 0, 0.5), t_BC(0.5, 0.1, 0.5);
    //p1坐标
    Vector3d p1(0.3, 0.2, 1.2);  
    
    //变换矩阵Tc1w和Tc2w
    Isometry3d T_BL(q_BL), T_BC(q_BC);
    T_BL.pretranslate(t_BL);
    T_BC.pretranslate(t_BC);
    
    //计算p2
    Vector3d p2 = T_BL.inverse()*T_BC*p1;
    cout <<"这个点在激光系下的坐标"<< p2.transpose() << endl;
       Vector3d p23= T_BL*T_BC.inverse()*p1;
    cout <<"这个点在激光系下的坐标"<< p23.transpose() << endl;

  //创建世界系和机器人本体的四元数
    Quaterniond q3(0.55, 0.3, 0.2,0.2), q4(0.99, 0, 0, 0.01);
    //四元数归一化
    q3.normalize();
    q4.normalize();
    
    //平移向量t3和t4
    Vector3d t3(0.1, 0.2, 0.3), t4(0.05, 0, 0.5);

    
    //变换矩阵Tc3w和Tc4w
    Isometry3d Tc3w(q3), Tc4w(q4);
    Tc3w.pretranslate(t3);
    Tc4w.pretranslate(t4);
    
    //计算p3
    Vector3d p3 = Tc4w*Tc3w*Tc*p1;
    cout <<"这个点在世界系下的坐标"<< p3.transpose() << endl;


    return 0;
}











