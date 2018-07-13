rule IC (inter_layer_clearance -1 (layer_pair cc via))
rule IC (inter_layer_clearance -1 (layer_pair poly via))
rule IC (inter_layer_clearance -1 (layer_pair active via))
rule IC (inter_layer_clearance -1 (layer_pair nactive via))
rule IC (inter_layer_clearance -1 (layer_pair pactive via))
setup_check (antenna_rule off) (conflict on) (corner_corner_check off) \
  (xtalk on) (end_cap off) (length on) (limit_way off) \
  (min_width_wire  on) (min_mask_edge_length off) (max_vias off) \
  (miter off) (order off) (polygon_wire on) (protected off) \
  (reentrant_path on) (same_net_check  on) (segment off) \
  (stub off) (use_layer off) (use_via off)   
