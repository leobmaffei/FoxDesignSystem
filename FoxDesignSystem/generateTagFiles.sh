mkdir -p DesignSystem &&
cat ${PODS_ROOT}/FoxDesignSystem/FoxDesignSystem/DesignSystemTokens.swift.gyb > DesignSystem/DesignSystemTokens.swift.gyb &&
for INFILE in ${!SCRIPT_INPUT_FILE_*};
do
    file=${!INFILE}
    if [ "${file: -4}" == ".gyb" ]; then
        echo "Processing template $file"
        "${PODS_ROOT}/FoxDesignSystem/FoxDesignSystem/gyb" --line-directive '' -o "${file%.gyb}" "$file"
    fi
done
