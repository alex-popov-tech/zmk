init:
	west init app/
	# west init -l app/
update:
	cd app; west update; cd -
	# west update

jorne_vu_keys:
	west build -p -s ./app -d build/jorne_vu_keys/left -b nrfmicro_13 -- -DSHIELD=jorne_left -DZMK_CONFIG="/workspaces/zmk/configs/jorne/config"
	cp -f build/jorne_vu_keys/left/zephyr/zmk.uf2 ./jorne_vu_keys_left.uf2
	west build -p -s ./app -d build/jorne_vu_keys/right -b nrfmicro_13 -- -DSHIELD=jorne_right -DZMK_CONFIG="/workspaces/zmk/configs/jorne/config"
	cp -f build/jorne_vu_keys/right/zephyr/zmk.uf2 ./jorne_vu_keys_right.uf2

corne_vu_keys:
	west build -p -s ./app -d build/corne_vu_keys/left -b nrfmicro_13 -- -DSHIELD=corne_left -DZMK_CONFIG="/workspaces/zmk/configs/corne/config"
	cp -f build/corne_vu_keys/left/zephyr/zmk.uf2 ./corne_vu_keys_left.uf2
	west build -p -s ./app -d build/corne_vu_keys/right -b nrfmicro_13 -- -DSHIELD=corne_right -DZMK_CONFIG="/workspaces/zmk/configs/corne/config"
	cp -f build/corne_vu_keys/right/zephyr/zmk.uf2 ./corne_vu_keys_right.uf2


jian_vu_keys:
	west build -p -s ./app -d build/jian_vu_keys/left -b nrfmicro_13 -- -DSHIELD=jian_left -DZMK_CONFIG="/workspaces/zmk/configs/jian/config"
	cp -f build/jian_vu_keys/left/zephyr/zmk.uf2 ./jian_vu_keys_left.uf2
	west build -p -s ./app -d build/jian_vu_keys/right -b nrfmicro_13 -- -DSHIELD=jian_right -DZMK_CONFIG="/workspaces/zmk/configs/jian/config"
	cp -f build/jian_vu_keys/right/zephyr/zmk.uf2 ./jian_vu_keys_right.uf2

dactyl_vu_keys:
	west build -p -s ./app -d build/dactyl_vu_keys/left -b nrfmicro_13 -- -DSHIELD=manuform_left -DZMK_CONFIG="/workspaces/zmk/configs/dactyl/config"
	cp -f build/dactyl_vu_keys/left/zephyr/zmk.uf2 ./dactyl_vu_keys_left.uf2
	west build -p -s ./app -d build/dactyl_vu_keys/right -b nrfmicro_13 -- -DSHIELD=manuform_right -DZMK_CONFIG="/workspaces/zmk/configs/dactyl/config"
	cp -f build/dactyl_vu_keys/right/zephyr/zmk.uf2 ./dactyl_vu_keys_right.uf2
