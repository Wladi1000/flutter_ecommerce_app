import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickImage({
      required ImageSource imageSource,
      required CropAspectRatio cropAspectRatio,  
    }) async {
      final XFile? pickedFile = await _picker.pickImage(source: imageSource);
      
      if (pickedFile == null) {
        return Future.error('No image selected');
      }

      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: cropAspectRatio,
        compressQuality: 90,
        compressFormat: ImageCompressFormat.jpg,
      );

      if (croppedFile == null) {
        return Future.error('No image cropped');
      }
      
      return XFile(croppedFile.path);
  }
}