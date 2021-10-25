#include <toml.hpp>

int main(int /*argc*/, char* /*argv*/[])
{
    toml::parse("test.toml");

    return 0;
}
