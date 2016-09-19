///skin_exists(id)
if(ds_exists(argument0, ds_type_map)) {
    if(argument0[?"ds"] == "skin") {
        return 1;
    }
}
return 0;