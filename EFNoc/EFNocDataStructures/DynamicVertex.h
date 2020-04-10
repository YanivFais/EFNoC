#pragma once

#include "DblPoint.h"
#include "EFNocVertex.h"

class DynamicVertex : public EFNocVertex
{
public:
	DynamicVertex(int i_vertexNum);
	DynamicVertex(const DynamicVertex & other);

private:
};
