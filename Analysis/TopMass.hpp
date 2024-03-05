#ifndef _TopMass_

#define _TopMass_
  
#include <set>
#include <string>
#include <cassert>
#include <map>
#include <vector>
#include <string>
#include <TH1.h>
#include <TH1F.h>
#include <TH1D.h>
#include <TH2F.h>
#include <TH3F.h>
#include <TGraphErrors.h>
#include "TLorentzVector.h"
  
#include "analysis/SSBTree.h"

using namespace std;

class TopMass : public SSBTree 
{
   public:
      //declare functions
      TopMass(TTree *tree=0);
      virtual ~TopMass();

      //basic frame
      virtual void Loop();
      void Start();
      void End();

      //user define functions
      void SetOutputFileName(char *outname);
      void DeclareHistos();
      
   private:
      //put variables that you want
      char *outfile;
      TFile *fout;
      FILE *fouttxt;

      // Declare user variables

   public:
      //declare histograms

      TH1D *h_Muon_Pt;
      TH1D *h_Muon_Eta;
      TH1D *h_Muon_Phi;
      TH1D *h_Muon_Energy;
      TH1D *h_Muon_rand1;
      TH1D *h_Muon_rand2;

      TH1D *h_Electron_Pt;
      TH1D *h_Electron_Eta;
      TH1D *h_Electron_Phi;
      TH1D *h_Electron_Energy;

      TH1D *h_Jet_Pt;
      TH1D *h_Jet_Eta;
      TH1D *h_Jet_Phi;
      TH1D *h_Jet_Energy;
      TH1D *h_Jet_EnergyResolution_SF;
};

#endif

#ifdef TopMass_cxx

TopMass::TopMass(TTree *tree)
{
   if (tree == 0)
   {
      printf("ERROR: Can't find any input tree.\n");
   }
   Init(tree);
}

TopMass::~TopMass()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

#endif
   

