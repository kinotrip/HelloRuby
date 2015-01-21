\#include "${out_file}.hpp"

\#include "RubyValueMap.h"
\#include "BindingHelper.h"

#for header in $headers
\#include "${os.path.basename(header)}"
#end for
