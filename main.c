#include <stdio.h>
#include <stdlib.h>

int		ft_strlen(const char *str);
int		ft_write(int fd, const void *buf, size_t nbyte);
char 	*ft_strcpy(char *dst, char *src);
int		ft_read(int fd, char *buff, int len);
int		ft_strcmp(char *str1, char *str2);
char	*ft_strdup(char *str);

int		main()
{
	char *str = ft_strdup("Hay hay hay");
	printf("%s\n", str);
	return (0);
}
