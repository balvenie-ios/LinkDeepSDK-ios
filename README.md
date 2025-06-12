# LinkDeep

## Demo
1. 開啟 LinkDeepSDK.xcodeproj, 將scheme切換至LinkDeepFramework並編譯, 會產出LinkDeepSDK.xcframework  
   位於/Sources/LinkDeepSDK/LinkDeepSDK.xcframework
2. 開啟Demo資料夾內的Demo.xcodeproj, 使用模擬器run

## 專案架構
專案包含三個部分
- LinkDeepSDK.xcodeproj, 用於打包xcframework  
    專案內有一個Target名為LinkDeepFramework的aggregate  
    將scheme切換至該target後編譯即完成打包xcframework, 打包結果位於./.build  
    並且會自動將打包出來的xcframework複製一份至Source/LinkDeepSDK  
    詳細腳本內容請參照LinkDeepFramework aggregate內的Build Phases頁籤內的Run Script  

- Package  
    Swift Package專案, 內含打包出的binaryTarget, LinkDeepSDK.xcframework  
    目的是為了使用framework並且不暴露原始程式碼  

- Demo
    位於Demo資料夾內的Demo.xcodeproj, 用以測試Package功能是否正常

## xcframework注意事項
由於為了兼容ObjC, 並同時兼容 ***Module引用*** 與 ***C Header引用***, 需要做以下調整
- Xcode framework target預設不會複製"LinkDeep-Switf.h"檔案  
  需要於framework的build setting設定Install Generated Header為YES  
  該選項會將bridging-header複製進於framework中, LinkDeepSDK.framework/Headers/LinkDeep-Switf.h
  使ObjC專案可以使用C Header方式引用框架
  ```
  #import <LinkDeepSDK/LinkDeepSDK-Swift.h>
  ```

- 為了需要兼容ObjC module, 需要於framework的build setting設定選項Defines Module為YES  
  該選項會產生modulemap檔, 位於LinkDeepSDK.framework/Modules/module.modulemap
  ```
  @import LinkDeepSDK;
  ```