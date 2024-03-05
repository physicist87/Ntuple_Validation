void countAll()
{

   void countAll(TString sample, int numFiles);
    countAll("DYJetsToLL_M_10To50",204);
    countAll("DYJetsToLL_M_10To50_Mad",108);
    countAll("DYJetsToLL_M_50",368);
    countAll("TTbar_Signal",151);
    countAll("TTbar_AllHadron", 391);
    countAll("TTbar_SemiLep", 530);
    countAll("TTJets_Inclusive",381);
    countAll("WJetsToLNu",119);
    countAll("WJetsToLNu_Mad",307);
    countAll("WW",40);
    countAll("WZ",80);
    countAll("ZZ",7);
}
//void countAll()
void countAll(TString sample, int numFiles)
{

   FILE *outfiles;
   int NumFiles = numFiles;
   TString outFileName;
   char letter1[100];
   char letter2[100];
   char letter3[100];
   Long64_t minus_=0; 
   Long64_t plus_=0; 
   Long64_t total_ =0; 
   Long64_t merge_minus_=0; 
   Long64_t merge_plus_=0; 
   Long64_t merge_total_=0; 
   cout << "Sample: " << sample << " Num files: " << numFiles << endl;
   for (int i = 0; i < NumFiles; ++i)
   {
      //cout << "i th file " << endl;
      //outFileName = Form("DYJetsToLL_M_50/DYJetsToLL_M_50_%d.txt",(i+1));
      outFileName = Form("%s/%s_%d.txt",sample.Data(), sample.Data(),(i+1));
      //cout << "outFileName " << outFileName << endl;
      outfiles = fopen(outFileName.Data(),"r");
      if(outfiles == NULL) {cout << "NoFile!!! : " << outFileName << endl; continue;}
      minus_=-999; 
      plus_=-999; 
      total_ =-999; 
      
      while (fscanf(outfiles, "%s %lld %s %lld %s %lld\n", letter1, &total_, letter2, &plus_, letter3, &minus_) != EOF){
         merge_total_ += total_; 
         merge_plus_ += plus_; 
         merge_minus_ += minus_; 
         //cout << "" << endl;
         //printf("%s %lld %s %lld %s %lld\n", letter1, total_, letter2, plus_, letter3, minus_);
      }
      fclose(outfiles); 
   }
   printf("Final ! total %lld positive: %lld negatvie: %lld\n",  merge_total_,  merge_plus_,  merge_minus_);

}
