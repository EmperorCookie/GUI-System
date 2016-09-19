///owner_y()
if(instance_exists(owner)) {
    with(owner) {
        return owner_y() + y;
    }
}
return 0;