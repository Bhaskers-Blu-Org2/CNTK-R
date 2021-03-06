#' Broadcast Sequence As
#'
#' @param operand
#' @param broadcast_as_operand
#' @param name
#'
#' @export
seq_broadcast_as <- function(operand, broadcast_as_operand, name = '') {
	cntk$ops$sequence$broadcast_as(
		operand,
		broadcast_as_operand,
		name = name
	)
}

#' Delay Sequence
#'
#' @param x
#' @param init (scalar or matrix or initializer, defaults to
#' init_glorot_uniform()) – initial value of weights Wial_state
#' @param time_step
#' @param name
#'
#' @export
seq_delay <- function(x, initial_state = NULL, time_step = 1, name = '') {
	cntk$ops$sequence$delay(
		x,
		initial_state = initial_state,
		time_step = to_int(time_step),
		name = name
	)
}

#' First Element of Sequence
#'
#' @param seq
#' @param name
#'
#' @export
seq_first <- function(seq, name = '') {
	cntk$ops$sequence$first(
		seq,
		name = name
	)
}

#' Sequence Future Value
#'
#' @param x
#' @param init (scalar or matrix or initializer, defaults to
#' init_glorot_uniform()) – initial value of weights Wial_state
#' @param time_step
#' @param name
#'
#' @export
seq_future_value <- function(x, initial_state = NULL, time_step = 1,
							 name = '') {
	cntk$ops$sequence$future_value(
		x,
		initial_state = initial_state,
		time_step = to_int(time_step),
		name = name
	)
}

#' Sequence Gather
#'
#' @param seq
#' @param condition
#' @param new_sequence_axis_typeinfo
#' @param name
#'
#' @export
seq_gather <- function(seq, condition, new_sequence_axis_typeinfo, name = '') {
	cntk$ops$sequence$gather(
		seq,
		condition,
		new_sequence_axis_typeinfo = to_int(new_sequence_axis_typeinfo),
		name = name
	)
}

#' Sequence Network Input Variable
#'
#' @param shape - list of ints representing tensor shape
#' @param dtype - data type to be used ("float32", "float64", or "auto")
#' @param needs_gradient
#' @param is_sparse
#' @param sequence_axis
#' @param name
#'
#' @export
seq_input_variable <- function(shape, dtype = 'float32',
							   needs_gradient = FALSE, is_sparse = FALSE,
							   sequence_axis = cntk$axis$Axis$default_dynamic_axis(),
							   name = '') {
	cntk$ops$sequence$input_variable(
		to_int(shape),
		dtype = type_map(dtype),
		needs_gradient = needs_gradient,
		is_sparse = is_sparse,
		sequence_axis = sequence_axis,
		name = name
	)
}

#' Sequence Is First
#'
#' @param seq
#' @param name
#'
#' @export
seq_is_first <- function(seq, name = '') {
	cntk$ops$sequence$is_first(
		seq,
		name = name
	)
}

#' Sequence Is Last
#'
#' @param seq
#'
#' @param name
#'
#' @export
seq_is_last <- function(seq, name = '') {
	cntk$ops$sequence$is_last(
		seq,
		name = name
	)
}

#' Get Last Sequence Element
#'
#' @param seq
#' @param name
#'
#' @export
seq_last <- function(seq, name = '') {
	cntk$ops$sequence$last(
		seq,
		name = name
	)
}

#' Get Past Sequence Value
#'
#' @param x
#' @param init (scalar or matrix or initializer, defaults to
#' init_glorot_uniform()) – initial value of weights Wial_state
#' @param time_step
#' @param name
#'
#' @export
seq_past_value <- function(x, initial_state = NULL, time_step = 1, name = '') {
	cntk$ops$sequence$past_value(
		x,
		initial_state = initial_state,
		time_step = to_int(time_step),
		name = name
	)
}

#' Reduce Sequence Max
#'
#' @param seq
#' @param name
#'
#' @export
seq_reduce_max <- function(seq, name = '') {
	cntk$ops$sequence$reduce_max(
		seq,
		name = name
	)
}

#' Reduce Sequence Element Sum
#'
#' @param seq
#' @param name
#'
#' @export
seq_reduce_sum <- function(seq, name = '') {
	cntk$ops$sequence$reduce_sum(
		seq,
		name = name
	)
}

#' Sequence Scatter
#'
#' @param seq
#' @param condition
#' @param new_sequence_axis_typeinfo
#' @param name
#'
#' @export
seq_scatter <- function(seq, condition, new_sequence_axis_typeinfo = NULL,
						name = '') {
	cntk$ops$sequence$scatter(
		seq,
		condition,
		new_sequence_axis_typeinfo = to_int(new_sequence_axis_typeinfo),
		name = name
	)
}

#' Sequence Slice
#'
#' @param seq
#' @param begin_index
#' @param end_index
#' @param name
#'
#' @export
seq_slice <- function(seq, begin_index, end_index, name = '') {
	cntk$ops$sequence$slice(
		seq,
		to_int(begin_index),
		to_int(end_index),
		name = name
	)
}

#' Sequence Softmax
#'
#' @param seq
#' @param name
#'
#' @export
seq_softmax <- function(seq, name = '') {
	cntk$ops$sequence$softmax(
		seq,
		name = name
	)
}

#' Sequence Unpack
#'
#' @param x
#' @param pad_value
#' @param no_mask_output
#' @param name
#'
#' @export
seq_unpack <- function(x, padding_value, no_mask_output = FALSE,
					   name = '') {
	cntk$ops$sequence$unpack(
		x,
		type_map(padding_value),
		no_mask_output = no_mask_output,
		name = name
	)
}

#' Sequence Where
#'
#' @param seq
#' @param name
#'
#' @export
seq_where <- function(seq, name = '') {
	cntk$ops$sequence$where(
		seq,
		name = name
	)
}
