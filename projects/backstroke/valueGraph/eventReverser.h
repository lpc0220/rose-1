#ifndef BACKSTROKE_VG_EVENTREVERSER_H
#define	BACKSTROKE_VG_EVENTREVERSER_H

#include <rose.h>

namespace Backstroke
{

class ValueNode;

//! Build a variable declaration.
SgStatement* buildVarDeclaration(ValueNode* newVar, SgExpression* expr = 0);

//! Instrument a push function for the variable in the given value node.
//! The function definition is needed in case that the variable declaration is
//! in a class, but not in a function (data member).
void instrumentPushFunction(ValueNode* node, SgFunctionDefinition* funcDef);

//! Build a pop function call.
SgExpression* buildPopFunctionCall(SgType* type);

//! Build a statement to restore the given node.
SgStatement* buildRestorationStmt(ValueNode* node);

// If rhs is NULL, it's an assignment to itself, like a_1 = a;
SgStatement* buildAssignOpertaion(ValueNode* lhs, ValueNode* rhs = NULL);

SgStatement* buildOperation(
        ValueNode* result,
        VariantT type,
        ValueNode* lhs,
        ValueNode* rhs = NULL);

} // end of Backstroke

#endif	/* BACKSTROKE_VG_EVENTREVERSER_H */

