function luaver
    # luaver path
    set -l luaver_path ~/.luaver/

    # luaver binary
    set -l luaver_bin "$luaver_path"luaver

    # target command
    set -l target_cmd "$luaver_bin $argv"

    switch "$argv[1]"

    case 'install*'
        # Install and echo all lines except 'switch to version' line
        echo | bash -c "$target_cmd" | grep -iv switch

    case 'use*'
        if [ "$argv[1]" != "use" ] && [ "$argv[1]" != "use-luajit" ] && [ "$argv[1]" != "use-luarocks" ]
            luaver help
            return 0
        end

        # 'list command' option for exact 'use command' option called
        set -l list (echo "$argv[1]" | sed -e s/use/list/)
        # list command
        set -l list_cmd "$luaver_bin $list"
        # Command type ('lua', 'luajit', or 'luarocks')
        set -l type (echo "$argv[1]" | sed -e s/use-// | sed -e s/use/lua/ )

        # Search 'list command' output for version passed in
        if not bash -c "$list_cmd" | grep -q "$argv[2]"
            # 'install command' option for exact 'use command' option called
            set -l inst (echo "$argv[1]" | sed -e s/use/install/)
            # Output error message: example: "Cannot use-luajit 2.0.0: Run luaver install-luajit 2.0.0"
            echo "Cannot $argv: Run luaver $inst $argv[2]"
            return 1
        end

        set -l bin_path "$luaver_path""$type"/"$argv[2]"/bin

        echo | bash -c "$target_cmd"

        sudo ln -sf "$bin_path"/* /usr/local/bin

    # All other cases, pass to command as is
    case '*'
        bash -c $target_cmd

    end
end
