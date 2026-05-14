#include <pangolin/utils/file_utils.h>

#include <string>
#include <vector>

int main()
{
    const std::vector<std::string> parts = pangolin::Split("alpha:beta:gamma", ':');
    if (parts.size() != 3 || parts[0] != "alpha" || parts[2] != "gamma")
    {
        return 1;
    }

    if (!pangolin::StartsWith("pangolin", "pan") || !pangolin::EndsWith("pangolin", "lin"))
    {
        return 1;
    }

    return 0;
}
