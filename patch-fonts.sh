for file_with_path in /mnt/d/Users/Bosco/Downloads/Fonts/Patch/**/*; do
	fullname=$(basename -- "$file_with_path")
	file="${fullname%.*}"
	# extension="${fullname##*.}"
	fontforge -script ./font-patcher/font-patcher -l -c --careful -out /mnt/d/Users/Bosco/Downloads/patched-fonts --name "$file NF" "$file_with_path"
	# Dry-run
	# echo $file
done
