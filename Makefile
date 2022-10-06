# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gclausse <gclausse@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/06 08:15:02 by gclausse          #+#    #+#              #
#    Updated: 2022/10/06 08:15:21 by gclausse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_container
SRCS = main.cpp

CXX = c++
CXXFLAGS = -MMD -Wall -Wextra -Werror
DBFLAGS = -std=c++98

OBJ=$(addprefix $(OBJ_PATH), $(SRCS:.cpp=.o))
OBJ_PATH = ./objs/

DEPS=$(OBJ:.o=.d)

$(OBJ_PATH)%.o: %.cpp
	@mkdir -p $(OBJ_PATH)
	$(CXX) $(CXXFLAGS) $(DBFLAGS) -o $@ -c $<

all: $(NAME)

debug: CXXFLAGS+=$(DBFLAGS)
debug:	$(NAME)

$(NAME): $(OBJ)
	$(CXX) $(CXXFLAGS) $(DBFLAGS) $^ -o $@

clean: 
	@rm -rf $(OBJ_PATH) 
	
fclean: clean
	$(RM) $(NAME)

re: fclean 
	make all

-include $(DEPS)
.PHONY: all clean fclean re debug