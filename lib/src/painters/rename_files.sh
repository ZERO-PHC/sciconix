for file in *icon.dart; do
    if [[ "$file" != "placeholder_icon_painter.dart" && "$file" != "icon_model.dart" ]]; then
        new_name="${file/icon/painter}"
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    fi
done

# Handle special case for cloud_computing_icon.dart
mv cloud_computing_icon.dart cloud_computing_painter.dart
echo "Renamed cloud_computing_icon.dart to cloud_computing_painter.dart"
