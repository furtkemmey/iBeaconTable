import UIKit

class InfoViewController: UIViewController
{
    @IBOutlet weak var lblIndex: UILabel!
    @IBOutlet weak var imgInfo: UIImageView!
    //記錄上一頁的執行實體
    weak var myTableViewController:MyTableViewController!
    //記錄上一頁傳來的影像索引值
    var imgIndex = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //設定導覽頁標題
        self.navigationItem.title = "產品介紹"
        //顯示導覽資訊
        lblIndex.text = "導覽：\(imgIndex)"
        //顯示導覽圖片
        imgInfo.image = UIImage(named: myTableViewController.iBeaconDevices[imgIndex]["imgInfo"]!)
    }

}
