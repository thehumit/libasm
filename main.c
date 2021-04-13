#include "libasm.h"
#include <string.h>
#include <unistd.h>
int main(void)
{
	printf("%zu\n", ft_strlen("asdfgh"));
	///////////////////////////////////
	char dst[4];
	char *s1 = strdup("\xff\xff");
	char *s2 = strdup("\xff");
	printf("MY: %d\n", ft_strcmp(s1, s2));
	printf("OG: %d\n", strcmp(s1, s2));
	////////////////////////////////////
	ft_strcpy(dst, "yope");
	printf("%s\n", dst);

	//////////////////////////////////////
	char *str = ft_strdup("");
	ft_write(-1, "assasasa", 10);
}
