class Product:
    def __init__(self, productId, productName, description, price, quantityInStock, type):
        self.productId = productId
        self.productName = productName
        self.description = description
        self.price = price
        self.quantityInStock = quantityInStock
        self.type = type
    
    
    # Getters
    def getProductId(self):
        return self.__productId

    def getProductName(self):
        return self.__productName

    def getDescription(self):
        return self.__description

    def getPrice(self):
        return self.__price

    def getQuantityInStock(self):
        return self.__quantityInStock

    def getType(self):
        return self.__type

    # Setters
    def setProductId(self, productId):
        self.__productId = productId

    def setProductName(self, productName):
        self.__productName = productName

    def setDescription(self, description):
        self.__description = description

    def setPrice(self, price):
        self.__price = price

    def setQuantityInStock(self, quantityInStock):
        self.__quantityInStock = quantityInStock

    def setType(self, type):
        self.__type = type
    


