#' ForwardDeclaration
#'
#' Helper for recurrent network declarations. Returns a placeholder variable
#' with an added method resolve_to() to be called at the end to close the loop.
#' This is used for explicit graph building with recurrent connections.
#'
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
ForwardDeclaration <- function(name = 'forward_declaration') {
	cntk$layers$blocks$ForwardDeclaration(name = name)
}

#' GRU
#'
#' Layer factory function to create a GRU block for use inside a recurrence.
#' The GRU block implements one step of the recurrence and is stateless. It
#' accepts the previous state as its first argument, and outputs its new state.
#'
#' @param shape - list of ints representing tensor shape
#' @param cell_shape
#' @param activation (Function) - optional activation Function
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W_bias
#' @param enable_self_stabilization
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
GRU <- function(shape, cell_shape = NULL, activation = op_tanh,
				init = init_glorot_uniform(), init_bias = 0,
				enable_self_stabilization = FALSE, name = '') {
	cntk$layers$blocks$GRU(
		to_int(shape),
		to_int(cell_shape),
		activation = activation,
		init = init,
		init_bias = init_bias,
		enable_self_stabilization = enable_self_stabilization,
		name = name
	)
}

#' LSTM
#'
#' Layer factory function to create an LSTM block for use inside a recurrence.
#' The LSTM block implements one step of the recurrence and is stateless. It
#' accepts the previous state as its first two arguments, and outputs its new
#' state as a two-valued tuple (h,c).
#'
#' @param shape - list of ints representing tensor shape
#' @param cell_shape
#' @param activation (Function) - optional activation Function
#' @param use_peepholes
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W_bias
#' @param enable_self_stabilization
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
LSTM <- function(shape, cell_shape = NULL, activation = op_tanh,
				 use_peepholes = FALSE, init = init_glorot_uniform(),
				 init_bias = 0, enable_self_stabilization = FALSE, name = '') {
	cntk$layers$blocks$LSTM(
		to_int(shape),
		cell_shape = to_int(cell_shape),
		activation = activation,
		use_peepholes = use_peepholes,
		init = init,
		init_bias = init_bias,
		enable_self_stabilization = enable_self_stabilization,
		name = name
	)
}

#' RNNStep
#'
#' Layer factory function to create a plain RNN block for use inside a
#' recurrence. The RNN block implements one step of the recurrence and is
#' stateless. It accepts the previous state as its first argument, and outputs
#' its new state.
#'
#' @param shape - list of ints representing tensor shape
#' @param cell_shape
#' @param activation (Function) - optional activation Function
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W
#' @param init (scalar or matrix or initializer, defaults to init_glorot_uniform()) – initial value of weights W_bias
#' @param enable_self_stabilization
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
RRNStep <- function(shape, cell_shape = NULL, activation = op_sigmoid,
					init = init_glorot_uniform(), init_bias = 0,
					enable_self_stabilization = FALSE, name = '') {
	cntk$layers$blocks$RNNStep(
		to_int(shape),
		cell_shape = to_int(cell_shape),
		activation = activation,
		init = init,
		init_bias = init_bias,
		enable_self_stabilization = enable_self_stabilization,
		name = name
	)
}

#' Stabilizer
#'
#' Layer factory function to create a Droppo self-stabilizer. It multiplies its
#' input with a scalar that is learned.  This takes enable_self_stabilization
#' as a flag that allows to disable itself. Useful if this is a global default.
#'
#' @param steepness
#' @param enable_self_stabilization
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
Stabilizer <- function(steepness = 4, enable_self_stabilization = TRUE,
					   name = '') {
	cntk$layers$blocks$Stabilizer(
		steepness = steepness,
		enable_self_stabilization = enable_self_stabilization,
		name = name
	)
}

#' Untested Branch Error
#'
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
UntestedBranchError <- function(name) {
	cntk$layers$blocks$UntestedBranchError(name)
}
