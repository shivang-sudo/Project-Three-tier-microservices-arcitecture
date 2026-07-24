from locust import HttpUser, task, between

class RobotShopLoadTester(HttpUser):
    wait_time = between(0.5, 1.5)

    @task(4)
    def browse_homepage(self):
        self.client.get("/", verify=False)

    @task(2)
    def view_products(self):
        self.client.get("/api/catalogue/categories", verify=False)

    @task(1)
    def check_cart_status(self):
        self.client.get("/api/cart/view", verify=False)
