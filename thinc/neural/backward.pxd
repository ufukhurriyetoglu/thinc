from ..structs cimport FeatureC
from ..structs cimport ConstantsC

from ..typedefs cimport len_t
from ..typedefs cimport idx_t
from ..typedefs cimport weight_t


cdef void d_ELU__dot(weight_t* gradient, weight_t** bwd, weight_t* averages,
        const weight_t* W, const weight_t* const* fwd, const len_t* shape,
        int nr_above, int nr_below, const ConstantsC* hp) nogil
   

cdef void d_ReLu__dot(weight_t* gradient, weight_t** bwd, weight_t* averages,
        const weight_t* W, const weight_t* const* fwd, const len_t* shape,
        int nr_above, int nr_below, const ConstantsC* hp) nogil


cdef void d_ELU__dot__normalize__dot(weight_t* gradient, weight_t** bwd, weight_t* averages,
        const weight_t* W, const weight_t* const* fwd, const len_t* shape,
        int nr_above, int nr_below, const ConstantsC* hp) nogil


cdef void d_log_loss(
    weight_t* loss,
        const weight_t* costs,
        const weight_t* scores,
            len_t nr_out) nogil


cdef void d_dot(weight_t* btm_diff,
        int nr_btm,
        const weight_t* top_diff, int nr_top,
        const weight_t* W) nogil
 

cdef void d_ELU(weight_t* delta, const weight_t* signal_out, int n) nogil