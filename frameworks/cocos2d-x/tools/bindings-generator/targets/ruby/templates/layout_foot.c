
void register_all_${prefix}() {
	#for rbclass in $sorted_classes
	rb_register_${prefix}_${rbclass}();
	#end for
}