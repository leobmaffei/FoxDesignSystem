mkdir -p DesignSystem &&
cat ${PROJECT_DIR}/DesignSystemContent/DesignSystemTokens.swift.gyb > DesignSystem/DesignSystemTokens.swift.gyb &&
for INFILE in ${!SCRIPT_INPUT_FILE_*};
do
    file=${!INFILE}
    if [ "${file: -4}" == ".gyb" ]; then
        echo "Processing template $file"
        "${PROJECT_DIR}/FoxDesignSystem/Scripts/gyb" --line-directive '' -o "${file%.gyb}" "$file"
    fi
done
