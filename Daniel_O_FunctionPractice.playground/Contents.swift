import UIKit

func main(){
    let jacket_cost = 199.00
    print("The jacket costs: $" + String(format: "%.2f", jacket_cost))
    let clearancePrice = clearanceCal(jacket_cost)
    print("The clearance price is $" + String(format: "%.2f", clearancePrice))
    let salePrice = thirty(jacket_cost)
    print("The price, taking into account the sale and clearance sale, is $" + String(format: "%.2f", salePrice))
    let salesTax = taxCal(salePrice)
    print("The tax is $" + String(format: "%.2f", salesTax))
    let total = genTotal(salePrice, salesTax)
    print("The total is $" + String(format: "%.2f", total))
}

func clearanceCal(_ jacket_cost: Double) -> Double{
   let clearancePrice = jacket_cost * 0.50
    return clearancePrice
}

func thirty(_ jacket_cost: Double) -> Double{
    let salePrice = ((jacket_cost * 0.50) * 0.70)
    return salePrice
}

func taxCal(_ jacket_cost: Double) -> Double{
    let salesTax = ((jacket_cost * 0.50) * 0.70) * 0.60
    return salesTax
}
func genTotal(_ salePrice: Double, _ salesTax: Double) -> Double{
    let total = salePrice + salesTax
    return total
}

main()
