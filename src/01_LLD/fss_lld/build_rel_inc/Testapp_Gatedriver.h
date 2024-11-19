#ifndef TESTAPP_GATEDRIVER_H
#define TESTAPP_GATEDRIVER_H

#include "Std_Types.h"
#include "UCC5880.h"

extern FLAG Testapp_gd(void);
extern void read_diagnosis_data(void);
extern void Ford_read_write(uint16);
#endif /*TESTAPP_GATEDRIVER_H*/