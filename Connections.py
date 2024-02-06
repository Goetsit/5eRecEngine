from neo4j import GraphDatabase


class ActionEconomyRecommendationEngineDBConnect:

    def __init__(self, uri, user, password):
        self.driver = GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.driver.close()

    def print_greeting(self, message):
        with self.driver.session() as session:
            greeting = session.execute_write(self._create_and_return_greeting, message)
            print(greeting)

    @staticmethod
    def _create_and_return_greeting(tx, message):
        result = tx.run("MATCH(n)"
                        "RETURN n", message=message)
        return result.single()[0]


if __name__ == "__main__":
    greeter = ActionEconomyRecommendationEngineDBConnect("bolt://localhost:7687", "neo4j", "45%Fc#2ui%6")
    greeter.close()

# uri = "bolt://localhost:7687"
# user = "neo4j"
# password = "45%Fc#2ui%6"
#
