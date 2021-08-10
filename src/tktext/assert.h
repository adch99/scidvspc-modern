/* assert.h */

#ifndef ASSERT_H_INCLUDED
#define ASSERT_H_INCLUDED

#ifdef NDEBUG

# define assert(expr) (void) (0)

#else

#include <setjmp.h>

extern int catchAssertion(void);
extern void assertionFailed(char const* expr, char const* file, unsigned line, char const* func);

# define assert(expr) ((expr) ? (void) (0) : assertionFailed(__STRING(expr),  __FILE__, __LINE__, __func__))

#ifdef CATCH_ASSERTION_FAILED
# undef CATCH_ASSERTION_FAILED
#endif

extern jmp_buf assertJumpBuf;
#define CATCH_ASSERTION_FAILED setjmp(assertJumpBuf)

#endif /* NDEBUG */
#endif /* ASSERT_H_INCLUDED */
