#' Attention Model
#'
#' @param attention_dim
#' @param attention_span
#' @param attention_axis
#' @param init (scalar or matrix or initializer, defaults to
#' init_glorot_uniform()) – initial value of weights W
#' @param go_backwards
#' @param enable_self_stabilization
#' @param name string (optional) the name of the Function instance in the network
#'
#' @export
AttentionModel <- function(attention_dim, attention_span = NULL,
						   attention_axis = NULL, init = init_glorot_uniform(),
						   go_backwards = FALSE,
						   enable_self_stabilization = TRUE, name = '') {
	cntk$layers$models$attention$AttentionModel(
		to_int(attention_dim),
		attention_span = attention_span,
		attention_axis = attention_axis,
		init = init,
		go_backwards = go_backwards,
		enable_self_stabilization = enable_self_stabilization,
		name = name
	)
}
