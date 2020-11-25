#!bin/bash
# Deploy a series of M2 patches.

# check if in Magento directory

[ ! -f "index.php" ] && echo "Unable to find Magento Project." && exit
[ ! -d "app/etc" ] && echo "Unable to locate app/etc." && exit
[ ! -d "app/code" ] && echo "Unable to locate app/code" && exit
[ ! -d "../patches" ] && echo "Unable to locate ../patches" && exit

PATCH_BIN=$(which patch)

apply()
{
    TEST_FLAG=
    FILE=$1

    if [ "$2" = "dry-run" ]; then
        TEST_FLAG=" --dry-run"
        echo "Checking if patch can be applied/reverted successfully..."
    fi

    PATCH_APPLY_REVERT_RESULT=$($PATCH_BIN $TEST_FLAG -p1 -i "$FILE");
    PATCH_APPLY_REVERT_STATUS=$?

    if [ $PATCH_APPLY_REVERT_STATUS -eq 1 ]; then
        echo -e "ERROR: Patch can't be applied/reverted successfully.\n\n$PATCH_APPLY_REVERT_RESULT"
        exit 1
    fi

    if [ $PATCH_APPLY_REVERT_STATUS -eq 2 ]; then
        echo -e "ERROR: Patch can't be applied/reverted successfully."
        exit 2
    fi
}

find ../patches -iname '*.diff' -print0 | while read -d $'\0' file;

do
    filename=$(basename "$file")
    if [ -f applied_patches.txt ] && grep -Fxq "$filename" applied_patches.txt; then
        echo "File $filename was already applied before"
    else
        echo "Applying file $filename"
        apply "$file" dry-run
        apply "$file"
        echo "$filename" >> applied_patches.txt
        echo "Patch $filename applied successfully"
    fi
done

