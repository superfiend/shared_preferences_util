# sharedpreferencesutil

a util of package shared preferences.

## Getting Started

```dart
import 'package:shared_preferences_util/shared_preferences_util.dart';

void main() {
    SharedPreferencesUtil.getData('key').then((value) {
        String data = value;
    });
    SharedPreferencesUtil.setData('key', true);
}
```

