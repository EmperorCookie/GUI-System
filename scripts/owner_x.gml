///owner_x()
if(instance_exists(owner)) {
    with(owner) {
        return owner_x() + x;
    }
}
return 0;