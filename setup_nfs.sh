test_flag = ${local.do_nfs}
 if [ "$test_flag" = true ]; then
    #  S E T U P   N F S 
    #
    # Create client group:
    echo "Creating client-group"
    weka nfs client-group add demoCG
    # Add IPs to client group:
    echo "adding client group IP constraints"
    weka nfs rules add ip demoCG 10.0.0.0/8
    # Create NFS Share:
    echo "Creating NFS Share"
    weka nfs permission add default demoCG --permission-type rw --supported-versions v3 --acl-type posix --squash root --enable-auth-types none,sys --anon-uid 65534 --anon-gid 65534
fi
