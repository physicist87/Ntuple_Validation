//////////////////////////////////////////////
//                                          //
//                                          //
//  Author: Sehwook Lee, merciful@fnal.gov  //
//                                          //
//                                          //
//////////////////////////////////////////////

#include <iostream>
#include <string>
#include <vector>
#include <ctime>

#include <TROOT.h>
#include <TUnixSystem.h>
#include <TChain.h>
#include <TStyle.h>
#include <TApplication.h>
#include <TString.h>
#include <TCanvas.h>
#include <TFile.h>
#include <TTree.h>

#include "analysis/SSBTree.h"
#include "TopMass.hpp"

using namespace std;

TROOT root ("Plots", "Program for CMS Analysis");

//argc: # of arguments, argv:array for arguments
int main(int argc, char **argv)
{
   printf("The number of options is: %i\n",argc-1);

   if(argc<2)
   {
      printf("At least, you have to set 1, 2\n");
      printf("1. Input filelist\n");
      printf("2. Output file\n");
      return 1;
   }

   for (int iopt=0; iopt<argc; iopt++)
   {
      printf("Option %i = %s\n",iopt,argv[iopt]);
   }

   ///read input options

   //cout << "argc: " << argc << endl;

   char *flist = argv[1];
   printf("Input filelist = %s\n",flist);

   char *outname = argv[2];
   printf("Output file name = %s\n",outname);


   //merge files
   FILE *filelist;
   char filename[1000];
   string filelistDir, filelistName, filelistPath;

   filelistDir = "./input/";
 
   cout << endl;
   filelistName = argv[1];
   filelistPath = filelistDir + filelistName;
   filelist = fopen(filelistPath.c_str(),"r");
  
   std::vector<double> entries_pertree;

   entries_pertree.clear();

   while(filelist==NULL)
   {
      cout << "File not found, please try again." << endl;
      cout << "Filelist you want to use: " << filelistDir;
      cin >> filelistName;      
      filelistPath = filelistDir + filelistName;
      filelist=fopen(filelistPath.c_str(),"r");
   }

   TChain *ch = new TChain("ssbanalyzer/SSBTree");

   cout << endl;
   cout << "start merging file(s)" << endl;
   
   while (fscanf(filelist, "%s", filename) != EOF)
   {
      cout << "adding: " << filename << endl;
      ch->Add(filename, 0);
      entries_pertree.push_back(ch->GetEntries());
   }
   cout << "Total number of events after merging root files: " << ch->GetEntries() << endl;

   //gDirectory->Add(ch);
   //gDirectory->pwd();
   //gDirectory->ls("-l");
   //gDirectory->cd("rootree:/muonid");
   //gDirectory->pwd();
   //gDirectory->GetList()->FindObject("MuID");
   //gDirectory->Print();
   //cout <<"ssibal " << gDirectory->GetPath() << endl;
   //TTree* tree = (TTree*)gDirectory->Get("muonid/MuID");

   TopMass *topmass = new TopMass(ch);
  
   // Setup cuts. 
   topmass->SetOutputFileName(outname);
   

   // Run event loop
   topmass->Start();
   topmass->Loop();
   topmass->End();
   
   cout << "End processing..." << endl << endl; 
   fclose(filelist); 
   return 0;
}

