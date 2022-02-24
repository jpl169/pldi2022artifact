//!#####################################################################
//! \file Filter_Utilities.h
//!#####################################################################
// Class Filter_Utilities
//######################################################################
#ifndef __Filter_Utilities__
#define __Filter_Utilities__

#include "binaryfusefilter.h"
#include <cstring>
#include <fstream>

class Filter_Utilities
{
  public:

    static void Save(binary_fuse8_t *filter,const std::string& filename)
    {
        FILE *data=fopen(filename.c_str(),"wb");
        fwrite(&(filter->Seed),sizeof(uint64_t),1,data);
        fwrite(&(filter->SegmentLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentLengthMask),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentCount),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentCountLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->ArrayLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->Fingerprints[0]),sizeof(uint8_t),filter->ArrayLength,data);
        fclose(data);
    }

    static void Save(binary_fuse16_t *filter,const std::string& filename)
    {
        FILE *data=fopen(filename.c_str(),"wb");
        fwrite(&(filter->Seed),sizeof(uint64_t),1,data);
        fwrite(&(filter->SegmentLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentLengthMask),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentCount),sizeof(uint32_t),1,data);
        fwrite(&(filter->SegmentCountLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->ArrayLength),sizeof(uint32_t),1,data);
        fwrite(&(filter->Fingerprints[0]),sizeof(uint16_t),filter->ArrayLength,data);
        fclose(data);
    }

    static void Load(binary_fuse8_t *filter,const std::string& filename)
    {
        FILE *data=fopen(filename.c_str(),"r");
        size_t buffer_size=fread(&(filter->Seed),sizeof(uint64_t),1,data);
        buffer_size=fread(&(filter->SegmentLength),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentLengthMask),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentCount),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentCountLength),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->ArrayLength),sizeof(uint32_t),1,data);
        filter->Fingerprints = (uint8_t*)malloc(filter->ArrayLength*sizeof(uint8_t));
        buffer_size=fread(&(filter->Fingerprints[0]),sizeof(uint8_t),filter->ArrayLength,data);
        fclose(data);
    }

    static void Load(binary_fuse16_t *filter,const std::string& filename)
    {
        FILE *data=fopen(filename.c_str(),"r");
        size_t buffer_size=fread(&(filter->Seed),sizeof(uint64_t),1,data);
        buffer_size=fread(&(filter->SegmentLength),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentLengthMask),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentCount),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->SegmentCountLength),sizeof(uint32_t),1,data);
        buffer_size=fread(&(filter->ArrayLength),sizeof(uint32_t),1,data);
        filter->Fingerprints = (uint16_t*)malloc(filter->ArrayLength*sizeof(uint16_t));
        buffer_size=fread(&(filter->Fingerprints[0]),sizeof(uint16_t),filter->ArrayLength,data);
        fclose(data);
    }
};
#endif
