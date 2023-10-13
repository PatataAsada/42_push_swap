/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yemoreno <yemoreno@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/12 18:47:49 by yemoreno          #+#    #+#             */
/*   Updated: 2023/09/12 18:47:49 by yemoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isascii(int character)
{
	return (character >= 0 && character <= 127);
}