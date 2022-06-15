# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmumm <kmumm@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/30 02:25:27 by kmumm             #+#    #+#              #
#    Updated: 2022/03/30 02:26:14 by kmumm            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werrors


all:		$(NAME)

$(NAME):	$(UTILS_OBJS) $(HEADER)
			$(CC) $(UTILS) $(CFLAGS) -o $(NAME)

$(NAME_BONUS):	$(UTILS_BONUS_OBJS) $(HEADER_BONUS)
			$(CC) $(UTILS_BONUS) $(MLXFLAGS) $(CFLAGS) -o $(NAME_BONUS)

%o:			%.c
			$(CC) $(CFLAGS) -Imlx -c $< -o $@

bonus:		$(NAME_BONUS)

clean:
			$(RM) $(UTILS_OBJS) $(UTILS_BONUS_OBJS)

fclean:		clean
			$(RM) $(NAME) $(NAME_BONUS)

re:			fclean all

.PHONY:		all clean fclean re
