#include "RunAction.hh"
#include "G4RunManager.hh"
#include "G4Run.hh"
#include <fstream>

namespace BTS
{

RunAction::RunAction()
{}

void RunAction::BeginOfRunAction(const G4Run*)
{
  (*m_OutFilePP) = new std::ofstream("ResultOfSimulation.txt"); // 创建输出文件
}

void RunAction::SetOutFilePP(std::ofstream** OutFilePP)
{
  m_OutFilePP = OutFilePP;
}

void RunAction::EndOfRunAction(const G4Run* run)
{
  (*m_OutFilePP)->close(); //关闭输出文件
}

}
