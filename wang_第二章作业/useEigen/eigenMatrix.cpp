#include<iostream>
#include<Eigen/Core>
#include<Eigen/Dense>
using namespace Eigen;
using namespace std;
int size=100;

int main(int argc, char const *argv[])
{

Matrix<double, Dynamic, Dynamic>A;
A=MatrixXd::Random(size,size);
A=A*A.transpose();
 Matrix<double, Dynamic, 1> B;   
B=MatrixXd::Random(size,1);
Matrix<double,Dynamic,1>X;
X=A.colPivHouseholderQr().solve(B);
     cout<<"QR:X="<<X.transpose()<<endl;
     X=A.ldlt().solve(B);
     cout<<"CHOLESKY:X="<<X.transpose()<<endl;
 //    Eigen::MatrixXd A=MatrixXd::Random()
     return 0;
}

















