#define TopMass_cxx

#include <iostream>
#include <sstream>
#include <vector>
#include <stdio.h>
#include <stdlib.h>

#include "TMath.h"
#include "TH2.h"
#include "TStyle.h"
#include "TCanvas.h"

#include "TopMass.hpp"
#include "CommonTools.hpp"

using namespace std;

void TopMass::Loop()
{
   //////////
   if (fChain == 0) return;
   //////////

   //////////
   Long64_t nentries = fChain->GetEntriesFast();

   Long64_t nbytes = 0, nb = 0;
   //////////

   ///My variables
   Long64_t __tot_evt = 0;

   ////////////////////////
   /// start event loop ///
   ////////////////////////
   Long64_t pos_ = 0;
   Long64_t neg_ = 0;
   for (Long64_t jentry=0; jentry<nentries;jentry++) 
   {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0)
      {
         printf("ERROR: Could not load tree!!!\n");
         break;
      }

      nb = fChain->GetEntry(jentry);   nbytes += nb;
       
      if (jentry % 10000 == 0) printf("Event %lld\n", jentry); //%lld supports Long64_t

      __tot_evt++;

      //////////////////////////////////////
      /// start any calculation and cuts ///
      //////////////////////////////////////
      if (!Info_isData)
      {
          if (Gen_EventWeight < 0.) {neg_++;}
          else {pos_++; }
      }
      else {//cout << " Info_isData == True "<< endl;
      }
      //cout << "Gen_EventWeight : " << Gen_EventWeight << endl;
   }//event loop
  
   printf("Total processed number of events: %lld\n", __tot_evt);
   if(fouttxt!=NULL)fprintf(fouttxt,"TotalEvt: %lld Positive: %lld Negative: %lld\n ", __tot_evt, pos_, neg_);
    
}//end Loop function

void TopMass::Start()
{
/*   fout = new TFile(Form("output/%s",outfile),"RECREATE");
   fout->cd("");

   TDirectory *dir = gDirectory;
   dir->cd();

   DeclareHistos();
*/
   fouttxt = fopen(Form("output/%s",outfile),"w");
}

void TopMass::DeclareHistos()
{
   h_Muon_Pt = new TH1D(Form("h_Muon_Pt"), Form("p_{T} of Muon;p_{T}"), 1000, 0, 1000);
   h_Muon_Eta = new TH1D(Form("h_Muon_Eta"), Form("#eta of Muon;#eta"), 10, -5, 5);
   h_Muon_Phi = new TH1D(Form("h_Muon_Phi"), Form("#phi of Jets;#phi "), 10, -5, 5);
   h_Muon_Energy = new TH1D(Form("h_Muon_Energy"), Form("Energy of Muons; Energy [GeV]"), 1000, 0, 1000);

   h_Muon_rand1 = new TH1D(Form("h_Muon_rand1"), Form("Random Number 1;Random Number"), 1000, 0, 1);
   h_Muon_rand2 = new TH1D(Form("h_Muon_rand2"), Form("Random Number 2;Random Number"), 1000, 0, 1);

   h_Electron_Pt = new TH1D(Form("h_Electron_Pt"), Form("p_{T} of Electron;p_{T}"), 1000, 0, 1000);
   h_Electron_Eta = new TH1D(Form("h_Electron_Eta"), Form("#eta of Electron;#eta"), 10, -5, 5);
   h_Electron_Phi = new TH1D(Form("h_Electron_Phi"), Form("#phi of Jets;#phi "), 10, -5, 5);
   h_Electron_Energy = new TH1D(Form("h_Electron_Energy"), Form("Energy of Electrons; Energy [GeV]"), 1000, 0, 1000);

   h_Jet_Pt = new TH1D(Form("h_Jet_Pt"), Form("p_{T} of Jet;p_{T}"), 1000, 0, 1000);
   h_Jet_Eta = new TH1D(Form("h_Jet_Eta"), Form("#eta of Jet;#eta"), 10, -5, 5);
   h_Jet_Phi = new TH1D(Form("h_Jet_Phi"), Form("#phi of Jets;#phi "), 10, -5, 5);
   h_Jet_Energy = new TH1D(Form("h_Jet_Energy"), Form("Energy of Jets; Energy [GeV]"), 1000, 0, 1000);
   h_Jet_EnergyResolution_SF = new TH1D(Form("h_Jet_EnergyResolution_SF"), Form("EnergyResoultion_SF of Jets; EnergyResoultion_SF "), 2000, -10, 10);
}

void TopMass::End()
{
//   fout->Write();
//   fout->Close();
     fclose(fouttxt);
}

void TopMass::SetOutputFileName(char *outname)
{   
   outfile = outname;
}



